local permissionsTemplates = import '../../templates/permissions.libsonnet';

{
  project+: {
    fullName: "technology.tm4e",
    displayName: "Eclipse TM4E"
  },
  jenkins+: {
    permissions: permissionsTemplates.projectPermissions($.project.unixGroupName, permissionsTemplates.committerPermissionsList)
  },
  seLinuxLevel: "s0:c55,c50",
  storage: {
    storageClassName: "managed-nfs-storage-barney-retain-policy",
  }
}
