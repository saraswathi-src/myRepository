namespace proj_name;

using{
    cuid,managed
} from '@sap/cds/common';

entity story:managed{
    key st_id : String;
        st_name : String;
        st_type : String;
      storytotask : Composition of many task on storytotask.tasktostory = $self;
}

entity task:managed {
    key t_id : String;
        st_id :String;
        t_name : String;
        t_status : String;
    tasktostory : Association to one story on tasktostory.st_id = st_id;
}