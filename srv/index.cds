using {cozcom as db} from '../db/schema.cds';

service ForumService @(path:'/forum'){

    @insertable
    @updatable
    entity Users as SELECT from db.Users{
        *
    };

}
