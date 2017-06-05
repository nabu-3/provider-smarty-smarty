{strip}
    {if isset($horizontal)}
        {assign var=variant value=horizontal}
        {assign var=rel value="/:/"|preg_split:$horizontal}
    {elseif isset($inline)}
        {assign var=variant value=inline}
        {assign var=rel value=false}
    {elseif isset($form_layout)}
        {assign var=variant value=$form_layout[0]}
        {assign var=rel value=$form_layout}
    {else}
        {assign var=variant value=vertical}
        {assign var=rel value=false}
    {/if}
    {if !isset($field)}{assign var=field value=false}{/if}
    {if !isset($name)}{assign var=name value=$field}{/if}
    {if $variant===horizontal}
        {if count($rel)===2}
            {assign var=label_class value="col-sm-offset-{$rel.0} col-sm-{$rel.1}"}
        {elseif count($rel)===1}
            {assign var=label_class value="col-sm-offset-{$rel.0} col-sm-{12-$rel.1}"}
        {else}
            {assign var=label_class value="col-sm-4 col-sm-8"}
        {/if}
    {/if}
    {assign var=value value=false}
    {if isset($from) && $from!==null}
        {if is_array($from) && is_string($field) && array_key_exists($field, $from)}
            {assign var=value value=$from[$field]}
        {elseif is_string($from)}
            {assign var=value value=$from}
        {/if}
    {/if}
    <div class="form-group{if isset($class) && strlen($class)>0} {$class}{/if}">
        {if $variant===horizontal}<div class="{$label_class|trim}">{/if}
        <div class="checkbox">
            <label>
                <input type="checkbox"
                       {if is_string($name) && strlen($name)>0} name="{$name}"{/if}
                       {if isset($check)} value="{$check|escape:"html"}"{if $value===$check} checked{/if}{/if}
                       {if isset($uncheck)} data-value-unchecked="{$uncheck|escape:"html"}"{/if}
                       {if isset($mandatory)} data-form-mandatory="{$mandatory}"{/if}
                       {if isset($rule)} data-form-rule="{$rule}"{/if}
                       {if isset($rule_param)} data-form-rule-param="{$rule_param}"{/if}
                >
                {if isset($label) && is_string($label)}{$label}{/if}
            </label>
        </div>
        {if $variant===horizontal}</div>{/if}
    </div>
{/strip}
