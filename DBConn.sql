declare
    my_MovieName Movies.Name%TYPE;
    my_Lead_Actor Movies.Lead_Actor%TYPE;
    my_Lead_Actress  Movies.Lead_Actress%TYPE;
    my_Release Movies.Release%TYPE;
    my_Director Movies.Director%TYPE;
    choice number;
    all_rec Movies%ROWTYPE;
begin 
    dbms_output.put_line('Enter choice: 1.Insert 2.Display');
    choice:=&choice;
    if(choice='1') then
        my_MovieName:=&my_MovieName;
        my_Lead_Actor:=&my_Lead_Actor;
        my_Lead_Actress:=&my_Lead_Actress;
        my_Release:=&my_Release;
        my_Director:=&my_Director;
        insert into Movies values(my_MovieName,my_Lead_Actor,my_Lead_Actress,my_Release,my_Director);
    else
        my_MovieName:=&my_MovieName;
        select * into all_rec from Movies where Name=my_MovieName;
        dbms_output.put_line('Movie Name:'||all_rec.Name||'Lead_Actor'||all_rec.Lead_Actor||'Lead Actress:'||all_rec.Lead_Actress||'Release:'||all_rec.Release||'Director:'||all_rec.Director);
        dbms_output.put_line('Enter correct choice');
    end if;
end;
/