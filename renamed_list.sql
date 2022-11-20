create view renamed_list as select distinct collectionName,caption from photos where caption != collectionName
