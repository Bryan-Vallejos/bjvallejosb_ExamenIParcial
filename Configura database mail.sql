--Configura database mail--
EXECUTE msdb.dbo.sysmail_add_account_sp  
    @account_name = 'Bryan Vallejos',  
    @description = 'cuenta de correo.',  
    @email_address = 'josuevallejos16@gmail.com',  
    @replyto_address = 'josuevallejos16@gmail.com',  
    @display_name = 'Correo',  
    @mailserver_name = 'smtp.josuevallejos.com' ;

 
EXECUTE msdb.dbo.sysmail_add_profile_sp  
    @profile_name = 'Bryan Vallejos Profile',  
    @description = 'Profile used for administrative mail.' ;  
  
 
EXECUTE msdb.dbo.sysmail_add_profileaccount_sp  
    @profile_name = 'Bryan Vallejos Profile',  
    @account_name = 'Bryan Vallejos',  
    @sequence_number =1 ;  

EXECUTE msdb.dbo.sysmail_add_principalprofile_sp  
    @profile_name = 'Bryan Vallejos Profile',  
    @principal_name = 'ApplicationUser',  
    @is_default = 1 ; 