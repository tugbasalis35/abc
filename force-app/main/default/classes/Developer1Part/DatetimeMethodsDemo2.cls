public  class DatetimeMethodsDemo2 {
    public void printsubscriptionEndDate(){
        Date subscriptionStartDate = date.today();

        date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug('Subscription end date is  '+ subscriptionEndDate);

        integer endOfYear =subscriptionEndDate.year();
        System.debug('subscription en date year is  ' +endOfYear );

        integer endOfMonth =subscriptionEndDate.month();
        System.debug('subscription en date month is  ' +endOfMonth );
        }
        public void printOfferEndDateTime(){
            Datetime dtNow = Datetime.now();
            Datetime dtOfferEnd = dtnow.addHours(51);
            System.debug('Offer will end on ' + dtOfferEnd);

            Date dtOfferend1 = dtOfferEnd.date();
            System.debug('offer end DATE is ' + dtOfferend1 );
        }
}
