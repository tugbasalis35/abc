public class DateTimeMethodsDemo {
    public void calculateAgeInMonths(){
        Date birthdate= Date.newInstance(1983, 04, 06);
        Date todayDate= Date.today();
        integer ageInMonths = birthdate.monthsBetween(todayDate);

        system.debug('Tugab\'s age in MONTHS + ' + ageInMonths);

    }
    public void calculateAgeInDays(){
        Date birthdate= Date.newInstance(1983, 04, 06);
        Date todayDate= Date.today();
        integer ageInDays = birthdate.daysBetween(todayDate);

        system.debug('Tugab\'s age in DAYS + ' + ageInDays);

    }
}
