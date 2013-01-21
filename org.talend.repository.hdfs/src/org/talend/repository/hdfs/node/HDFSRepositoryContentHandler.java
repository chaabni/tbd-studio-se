package org.talend.repository.hdfs.node;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IPath;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature.Setting;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.jface.wizard.IWizard;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.talend.commons.exception.PersistenceException;
import org.talend.commons.ui.runtime.image.IImage;
import org.talend.core.model.metadata.MetadataManager;
import org.talend.core.model.metadata.builder.connection.MetadataTable;
import org.talend.core.model.properties.Item;
import org.talend.core.model.repository.AbstractRepositoryContentHandler;
import org.talend.core.model.repository.ERepositoryObjectType;
import org.talend.core.model.repository.IRepositoryViewObject;
import org.talend.core.repository.utils.RepositoryNodeManager;
import org.talend.core.repository.utils.XmiResourceManager;
import org.talend.cwm.helper.ConnectionHelper;
import org.talend.cwm.helper.SubItemHelper;
import org.talend.repository.hdfs.ui.HDFSWizard;
import org.talend.repository.hdfs.util.EHDFSImage;
import org.talend.repository.model.IRepositoryNode;
import org.talend.repository.model.IRepositoryNode.EProperties;
import org.talend.repository.model.RepositoryNode;
import org.talend.repository.model.hdfs.HDFSConnection;
import org.talend.repository.model.hdfs.HDFSConnectionItem;
import org.talend.repository.model.hdfs.HDFSFactory;
import org.talend.repository.model.hdfs.HDFSPackage;
import org.talend.repository.ui.actions.metadata.CreateTableAction;
import orgomg.cwm.foundation.businessinformation.BusinessinformationPackage;

/**
 * DOC ycbai class global comment. Detailled comment
 */
public class HDFSRepositoryContentHandler extends AbstractRepositoryContentHandler {

    private XmiResourceManager xmiResourceManager = new XmiResourceManager();

    @Override
    public boolean isProcess(Item item) {
        if (item.eClass() == HDFSPackage.Literals.HDFS_CONNECTION_ITEM) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isRepObjType(ERepositoryObjectType type) {
        return type == HDFSRepositoryNodeType.HDFS;
    }

    @Override
    public Resource create(IProject project, Item item, int classifierID, IPath path) throws PersistenceException {
        if (item.eClass() == HDFSPackage.Literals.HDFS_CONNECTION_ITEM) {
            Resource itemResource = null;
            ERepositoryObjectType type;
            type = HDFSRepositoryNodeType.HDFS;
            itemResource = create(project, (HDFSConnectionItem) item, path, type);
            return itemResource;
        }
        return null;
    }

    private Resource create(IProject project, HDFSConnectionItem item, IPath path, ERepositoryObjectType type)
            throws PersistenceException {
        Resource itemResource = xmiResourceManager.createItemResource(project, item, path, type, false);
        itemResource.getContents().add(item.getConnection());

        return itemResource;
    }

    @Override
    public Resource save(Item item) throws PersistenceException {
        if (item.eClass() == HDFSPackage.Literals.HDFS_CONNECTION_ITEM) {
            Resource itemResource = null;
            itemResource = save((HDFSConnectionItem) item);
            return itemResource;
        }
        return null;
    }

    private Resource save(HDFSConnectionItem item) {
        Resource itemResource = xmiResourceManager.getItemResource(item);
        itemResource.getContents().clear();
        MetadataManager.addContents(item, itemResource);

        // add to the current resource all Document and Description instances because they are not reference in
        // containment references.
        Map<EObject, Collection<Setting>> externalCrossref = EcoreUtil.ExternalCrossReferencer.find(item.getConnection());
        Collection<Object> documents = EcoreUtil.getObjectsByType(externalCrossref.keySet(),
                BusinessinformationPackage.Literals.DOCUMENT);
        for (Object doc : documents) {
            itemResource.getContents().add((EObject) doc);
        }
        Collection<Object> descriptions = EcoreUtil.getObjectsByType(externalCrossref.keySet(),
                BusinessinformationPackage.Literals.DESCRIPTION);
        for (Object doc : descriptions) {
            itemResource.getContents().add((EObject) doc);
        }

        return itemResource;
    }

    @Override
    public IImage getIcon(ERepositoryObjectType type) {
        if (type == HDFSRepositoryNodeType.HDFS) {
            return EHDFSImage.HDFS_RESOURCE_ICON;
        }
        return null;
    }

    @Override
    public Item createNewItem(ERepositoryObjectType type) {
        Item item = null;
        if (type == HDFSRepositoryNodeType.HDFS) {
            item = HDFSFactory.eINSTANCE.createHDFSConnectionItem();
        }

        return item;
    }

    @Override
    public ERepositoryObjectType getRepositoryObjectType(Item item) {
        if (item.eClass() == HDFSPackage.Literals.HDFS_CONNECTION_ITEM) {
            return HDFSRepositoryNodeType.HDFS;
        }
        return null;
    }

    @Override
    public void addNode(ERepositoryObjectType type, RepositoryNode parentNode, IRepositoryViewObject repositoryObject,
            RepositoryNode node) {
        if (type == HDFSRepositoryNodeType.HDFS) {
            HDFSConnection connection = (HDFSConnection) ((HDFSConnectionItem) repositoryObject.getProperty().getItem())
                    .getConnection();
            Set<MetadataTable> tableset = ConnectionHelper.getTables(connection);
            for (MetadataTable metadataTable : tableset) {
                if (!SubItemHelper.isDeleted(metadataTable)) {
                    RepositoryNode tableNode = RepositoryNodeManager.createMetatableNode(node, repositoryObject, metadataTable);
                    node.getChildren().add(tableNode);
                    if (metadataTable.getColumns().size() > 0) {
                        RepositoryNodeManager.createColumns(tableNode, repositoryObject, metadataTable);
                    }
                }
            }
        }
    }

    @Override
    public ERepositoryObjectType getHandleType() {
        return HDFSRepositoryNodeType.HDFS;
    }

    @Override
    public boolean hasSchemas() {
        return true;
    }

    @Override
    public boolean hideAction(IRepositoryNode node, Class actionType) {
        boolean canHandle = false;
        ERepositoryObjectType nodeType = (ERepositoryObjectType) node.getProperties(EProperties.CONTENT_TYPE);
        if (HDFSRepositoryNodeType.HDFS.equals(nodeType)) {
            canHandle = true;
        }
        if (!canHandle) {
            if (ERepositoryObjectType.METADATA_CON_TABLE.equals(nodeType)
                    || ERepositoryObjectType.METADATA_CON_COLUMN.equals(nodeType)) {
                RepositoryNode parentNode = node.getParent();
                if (parentNode != null && HDFSRepositoryNodeType.HDFS.equals(parentNode.getProperties(EProperties.CONTENT_TYPE))) {
                    canHandle = true;
                }
            }
        }
        if (canHandle) {
            if (actionType == CreateTableAction.class) {
                return true;
            }
        }

        return false;
    }

    @Override
    public boolean isOwnTable(IRepositoryNode node, Class type) {
        if (type != HDFSConnection.class) {
            return false;
        }
        ERepositoryObjectType nodeType = (ERepositoryObjectType) node.getProperties(EProperties.CONTENT_TYPE);
        if (nodeType == ERepositoryObjectType.METADATA_CON_TABLE) {
            RepositoryNode repNode = node.getParent();
            nodeType = (ERepositoryObjectType) repNode.getProperties(EProperties.CONTENT_TYPE);
            if (nodeType == HDFSRepositoryNodeType.HDFS) {
                return true;
            }
        } else if (nodeType == ERepositoryObjectType.METADATA_CON_COLUMN) {
            RepositoryNode repNode = node.getParent().getParent().getParent();
            nodeType = (ERepositoryObjectType) repNode.getProperties(EProperties.CONTENT_TYPE);
            if (nodeType == HDFSRepositoryNodeType.HDFS) {
                return true;
            }
        }
        return false;
    }

    @Override
    public IWizard newWizard(IWorkbench workbench, boolean creation, RepositoryNode node, String[] existingNames) {
        if (node == null) {
            return null;
        }
        if (workbench == null) {
            workbench = PlatformUI.getWorkbench();
        }
        return new HDFSWizard(workbench, creation, node, existingNames);
    }

}
