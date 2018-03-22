{if $smarty.server.REMOTE_ADDR}
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"; "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd> 
  <html xmlns="http://www.w3.org/1999/xhtml"> 
  <head>  
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
    <title>An error occurred</title>
  </head> 
  <body> 
    <h2>{$message}</h2>
    <h3>Exception information:</h3> 
    <p> 
      <b>Message:</b> {$exception->getMessage()} 
    </p> 
   
    <h3>Stack trace:</h3> 
    <pre>{$exception->getTraceAsString()} 
    </pre> 
   
    <h3>Request Parameters:</h3> 
    <pre>{$request->getParams()|var_dump}
    </pre> 
   
  </body> 
  </html>
  {else}
  {include file=_header.tpl}
  {include file= error/404.tpl}
  {include file=_footer.tpl}
{/if}