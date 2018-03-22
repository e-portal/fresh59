{foreach from=$phones.phone item=phoneNum name=phones}
    {*{$phones.code|trim}*} 
         {$phones.code|trim} {$phoneNum|trim},
{/foreach}
