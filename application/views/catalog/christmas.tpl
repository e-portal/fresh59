{if $cat_id_temporary_celebration_count[$catId] && ($smarty.foreach.catitems.iteration == 2)}
    {if in_array($catId, array(12, 13, 15, 18, 21, 24, 25, 28, 29, 37, 45, 46, 48, 49, 50, 66, 68, 78, 92, 94, 141, 145, 169, 178, 210, 211, 212, 213, 270, 274, 308))}
        <div class="span-4 category_block_view_item">
            {if $catId =='12'}
                {assign var="id_path" value='https://590.ua/catalog/action/ids/14903,20686,20713,21960,23460,25910,27331,27288,19433,19434,19472,19474,19476,19477,19478,19525,22151,22152,27827,27828,27829,20737,27312,15302,15353,16077,21219,25597,23659'}
            {elseif $catId =='13'}
                {assign var="id_path" value='https://590.ua/catalog/action/ids/19995,21126,23440,23441,19891'}
            {elseif $catId =='15'}
                {assign var="id_path" value='https://590.ua/catalog/action/ids/21214,21215'}
            {elseif $catId =='18'}
                {assign var="id_path" value='https://590.ua/catalog/action/ids/25304,26465,28405,28408,28515,28345,28354,28422,24776'}
            {elseif $catId =='21'}
                {assign var="id_path" value='https://590.ua/catalog/action/ids/21580,24575,20446,21757,23046,24959,25103,25104,25377'}
            {elseif $catId =='24' || $catId =='213'}
                {assign var="id_path" value='https://590.ua/catalog/action/ids/23129,24519,26258,26264,26372,21149,24695,24697,26147,25377'}
            {elseif $catId =='25'}
                {assign var="id_path" value='https://590.ua/catalog/action/ids/25992,13723,20655,20668,20742'}
            {elseif $catId =='28'}
                {assign var="id_path" value='https://590.ua/catalog/action/ids/881,882,1014,1015,1031,1042,1043,12193,12652,13913,15147,17166,21522,24422,24426,24430,24742'}
            {elseif $catId =='29'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/1577,6519,6725,14608,14609,14612,14615,14616,16286,18023,18025,18035,22853,22882,23107"}
            {elseif $catId =='37'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/26178"}
            {elseif $catId =='45'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/23403,25823,28461,28470,28471"}
            {elseif $catId =='46'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/19820"}
            {elseif $catId =='48'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/21619,14492"}
            {elseif $catId =='49'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/21671,23470,23957,26377,27964,23194,25187,25890,25983,25984"}
            {elseif $catId =='50'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/27921"}
            {elseif $catId =='66'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/14734,19674"}
            {elseif $catId =='68'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/25236,21654"}
            {elseif $catId =='78'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/25898"}
            {elseif $catId =='92'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/8859"}
            {elseif $catId =='94'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/16322,23426"}
            {elseif $catId =='145' || $catId =='141'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/26313,22634,24827"}
            {elseif $catId =='169'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/24827"}
            {elseif $catId =='178'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/27797"}
            {elseif $catId =='210'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/23318,22806,17498,21411,25226"}
            {elseif $catId =='270' || $catId =='211'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/18769,23145,23146,20837,22124,27107,27625,28110,28349,23066,23067,23141,23824,23827,24329,6742,8681"}
            {elseif $catId =='212'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/26664,16057,16368,24794,25167,23166,23393,25903,27878,21465,23329"}
            {elseif $catId =='274'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/24706"}
            {elseif $catId =='308'}
                {assign var="id_path" value="https://590.ua/catalog/action/ids/28485"}
            {else}
                {assign var="id_path" value="#"}
            {/if}
            <a href="{$id_path}">
                <img src="https://590.ua/images/hint/blackfridaycategory.jpg">
                <span>{$cat_id_temporary_celebration_count[$catId]} шт.</span>
                <span>Отфильтровать все<br>
            <span>{$cat_name_temporary_celebration[$catId]}</span>
            <br>по акции
            <span>Christmas<br>& New Year</span>
        </span>
            </a>
        </div>
    {/if}
{/if}