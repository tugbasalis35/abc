public  class Car {
    public string carColor = '';
    public string carName = ' ';


    private integer maxSpeedKmPerHr = 150;
    //method name=swich on
    //return type=void
   public void swichOn(){
    //method body
    system.debug('starting the car');
   }
   public void drive(){
    System.debug('driving ' + carName);
   }
   public void driveAtMaxSpeed(){
    string drivingDescription = 'driving' + carName + 'at' + maxSpeedKmPerHr + 'km/h';
    System.debug(drivingDescription);
   }
}
