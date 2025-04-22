using {proj_name as my} from '../db/schema';


service Catalog_Service{
    @odata.draft.enabled
    entity story as projection on my.story;
    entity task as projection on my.task;
}