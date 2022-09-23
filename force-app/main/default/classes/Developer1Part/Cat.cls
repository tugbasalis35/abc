public  class Cat {
    public string name = '';
    public string color = '';
    //this is conctructor
    public Cat() {
        System.debug('conctructor called');
    }
    
    public Cat(string nm,string clr){
        name = nm;
        color=clr;
        sleeping();
    }
    public void sleeping(){
        System.debug(name + 'is sleeping');
    }


}

