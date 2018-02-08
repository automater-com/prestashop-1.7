 <div class="row">
    <div class="col-md-12">
        <h2>{l s='Map product with product from Automater' mod='automater'}</h2>
    </div>
    <div class="col-lg-4">
        {l s="Select associated product from Automater" mod='automater'}
    </div>
    <div class="col-lg-8">
        <select name="selautomater_product_id"  id="selautomater_product_id"  style="width:100%;" data-toggle="select2">
            <option value="0">{l s="--- select value ---" mod='automater'}</option>
            {foreach from=$automaterProducts item=product}
                <option value="{$product->getId()}" {if $assignedProductId == $product->getId()}selected="selected"{/if}>ID {$product->getId()}: {$product->getName()}</option>
            {/foreach}
        </select>
    </div>
</div>
<div class="row">
    <div class="col-md-12" style="margin-top:20px;">
        <button type="submit" name="submitAddproduct" class="btn btn-success pull-right"><i class="process-icon-save"></i> {l s='Save'}</button>
    </div>
</div>

