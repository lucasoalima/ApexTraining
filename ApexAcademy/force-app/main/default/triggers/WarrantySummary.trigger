trigger WarrantySummary on Lead (before insert) {

    String endingStatement = 'Have a nice day!';

    for (Lead myLead : Trigger.new){
        String purchaseDate         = myLead.Product_Purchase_Date__c.format();
        String createdDate          = Datetime.now().format();
        // .intValue() transforma o Product_Total_Warranty_Days em Int
        Integer warrantyDays        = myLead.Product_Total_Warranty_Days__c.intValue();                                                        // Formatar o numero de casas decimais
        Decimal warrantyPercentage  = (100 * (myLead.Product_Purchase_Date__c.daysBetween(Date.today()) / myLead.Product_Total_Warranty_Days__c)).setScale(2);
        Boolean hasExtendedWarranty = myLead.Product_Has_Extended_Warranty__c;

        // Populate summary para mostrar
        myLead.Warranty_Summary__c = 'Product purchased on ' + purchaseDate 
        + ' and case created on ' + createdDate + ' Warranty is for ' 
        + warrantyDays + ' days and is ' + warrantyPercentage + '% through its warranty period. \n'
        + ' Extended warranty: ' + hasExtendedWarranty + '\n'
        + endingStatement;

        
        
    }

    /* 
    Product purchase on <<Purchase Date>> and case created on <<Case Created Date>>.
    Warranty is for <<Warranty Total Days>> days and is <<Warranty Percentage>>% through its warranty period.
    Extended warranty: <<Has Extended Warranty>>
    Have a nice day!
    */
}