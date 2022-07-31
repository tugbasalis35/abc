List<string> listCandidate = new List<string>();
        listCandidate.add('Marc'); // 0
        listCandidate.add('Elon');
        listCandidate.add('Bill');
        listCandidate.add('Marc'); // 3

        for(string eachCany : listCandidate){
            system.debug(eachCany.toUpperCase());
        }