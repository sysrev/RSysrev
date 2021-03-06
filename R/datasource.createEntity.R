datasource.createEntity <- function(datasource.id,external.id,base64,filename,token=.token){
  query <- sprintf('mutation M{createEntity(dataset: %d external_id: "%s" file: "%s" filename: "%s") {id}}',
  	datasource.id,external.id,base64,filename)
  datasource.graphql(query,token)$createEntity$id
}
