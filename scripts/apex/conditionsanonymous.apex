conditionclass_assigment pdt = new conditionclass_assigment();
string output_month1=pdt.ifClassmethod(1);
system.debug('output month is(1): ' +output_month1 );
string output_month12=pdt.ifClassmethod(12);
system.debug('output month is (12): ' + output_month12);
system.debug('Quarter of the month January: ' + pdt.caseMethod('January'));
system.debug('Quarter of the month December: ' + pdt.caseMethod('December'));
