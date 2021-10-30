<?php

$to = 'yusuf@email.com';

$subject = 'Hactoberfest';

$message = 'Hi Maintainer, would you add my pull request.'; 

$from = 'yusuf@email.com';

 

// Sending email

if(mail($to, $subject, $message)){

    echo 'Your mail has been sent successfully.';

} else{

    echo 'Unable to send email. Please try again.';

}

?>
