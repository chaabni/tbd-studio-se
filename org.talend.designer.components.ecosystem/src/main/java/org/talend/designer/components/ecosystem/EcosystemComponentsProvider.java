// ============================================================================
//
// Copyright (C) 2006-2007 Talend Inc. - www.talend.com
//
// This source code is available under agreement available at
// %InstallDIR%\features\org.talend.rcp.branding.%PRODUCTNAME%\%PRODUCTNAME%license.txt
//
// You should have received a copy of the agreement
// along with this program; if not, write to Talend SA
// 9 rue Pages 92150 Suresnes, France
//
// ============================================================================
package org.talend.designer.components.ecosystem;

import java.io.File;
import java.io.FileFilter;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.eclipse.jface.preference.IPreferenceStore;
import org.talend.commons.exception.ExceptionHandler;
import org.talend.commons.utils.io.FilesUtils;
import org.talend.core.model.components.AbstractComponentsProvider;
import org.talend.designer.components.ecosystem.ui.views.EcosystemPreferencePage;

/**
 * Components provider for ecosystem.
 */
public class EcosystemComponentsProvider extends AbstractComponentsProvider {

    /**
     * EcosystemComponentsProvider constructor.
     */
    public EcosystemComponentsProvider() {
    }

    @Override
    public void preComponentsLoad() throws IOException {
        File installFolder = getInstallationFolder();

        // clean folder
        if (installFolder.exists()) {
            FilesUtils.removeFolder(installFolder, true);
        }
        FilesUtils.createFoldersIfNotExists(installFolder.getAbsolutePath(), false);

        File externalComponentsLocation = getExternalComponentsLocation();
        if (externalComponentsLocation != null) {
            if (externalComponentsLocation.exists()) {
                try {
                    copyFolder(externalComponentsLocation, installFolder);
                } catch (Throwable e) {
                    ExceptionHandler.process(e);
                }
            }
        }
    }

    /**
     * DOC hcw Comment method "copyFolder".
     * 
     * @param externalComponentsLocation
     * @param installFolder
     * @throws IOException
     */
    private void copyFolder(File externalComponentsLocation, File installFolder) throws IOException {
        FileFilter folderFilter = new FileFilter() {

            public boolean accept(File file) {
                return file.isDirectory();
            }
        };
        for (File folder : externalComponentsLocation.listFiles(folderFilter)) {
            /*
             * Some components have: <componentName>/<files> . some other have: <folder>/<componentName>/<files> .
             */
            File componentFolder = searchComponentFolder(folder);
            // System.out.println(componentFolder.getName());
            File target = new File(installFolder, componentFolder.getName());
            FileUtils.copyDirectory(componentFolder, target);
        }
    }

    /**
     * DOC hcw Comment method "searchComponentFolder".
     * 
     * @param folder
     * @return
     */
    private File searchComponentFolder(File folder) {
        File componentFolder = null;
        for (File file : folder.listFiles()) {
            if (file.isDirectory()) {
                componentFolder = searchComponentFolder(file);
                if (componentFolder != null) {
                    break;
                }
            } else {
                // assumes that if the folder contains properties file, it is the root folder of component
                if (file.getName().indexOf(".properties") > -1) {
                    componentFolder = folder;
                    break;
                }
            }
        }
        return componentFolder;
    }

    protected File getExternalComponentsLocation() {
        IPreferenceStore prefStore = EcosystemPlugin.getDefault().getPreferenceStore();
        String path = prefStore.getString(EcosystemPreferencePage.ECOSYSTEM_COMPONENTS_FOLDER);
        return (path == null || path.length() == 0 ? null : new File(path));
    }

}