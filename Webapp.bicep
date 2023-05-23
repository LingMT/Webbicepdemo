param appServicePlanName string 

param webAppName string

param location string = resourceGroup().location

param webAppName2 string

resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: appServicePlanName
  location: location
  sku: {
    name: 'D1'
    capacity: 1
  }
}


resource webApplication 'Microsoft.Web/sites@2021-01-15' = {
  name: webAppName
  location: location
  properties: {
    serverFarmId: appServicePlan.id
  }
}

resource webApplication 'Microsoft.Web/sites@2021-01-15' = {
  name: webAppName2
  location: location
  properties: {
    serverFarmId: appServicePlan.id
  }
}
