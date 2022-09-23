list<case> caseList = new list<case>();
for (Integer i = 0; i < 205; i++) {
    case c = new case();
    c.Subject = 'there is a bug-v '+ i;
    c.Description = 'resolve it';
    c.Origin = 'web';
    c.Status = 'new';
    caseList.add(c);
}
insert caseList;

    
