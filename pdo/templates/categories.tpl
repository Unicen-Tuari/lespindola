{include file="headerCategories.tpl"}
    <table class="table table-striped table-sm">
        <thead>
            <tr>
                <th>Product</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <h2>Mother</h2>  
                {foreach from=$products item=product}
                {if $product['category'] eq "Mother"}
            <td>
                {$product['title']|capitalize}
            </td>
            <td>
                {$product['description']|capitalize}
            </td>
        </tbody> 
            {/if}
            {/foreach}
    </table>
    <table class="table table-striped table-sm">
        <thead>
            <tr>
                <th>Product</th>
                <th>Description</th>
          </tr>
        </thead>
        <tbody>
            <h2>Processors</h2>
                {foreach from=$products item=product}
                {if $product['category'] eq "Processors"}
            <td>
                {$product['title']|capitalize}
            </td>
            <td>
                {$product['description']|capitalize}
            </td>
        </tbody> 
            {/if}
            {/foreach}
    </table>
    <table class="table table-striped table-sm">
        <thead>
            <tr>
                <th>Product</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <h2>Cabinets</h2>
                {foreach from=$products item=product}
                {if $product['category'] eq "Cabinets"}
            <td>
                {$product['title']|capitalize}
            </td>
            <td>
                {$product['description']|capitalize}
            </td>
        </tbody> 
            {/if}
            {/foreach}
    </table>
    <table class="table table-striped table-sm">
        <thead>
            <tr>
                <th>Product</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <h2>Discs</h2>
                {foreach from=$products item=product}
                {if $product['category'] eq "Discs"}
            <td>
                {$product['title']|capitalize}
            </td>
            <td>
                {$product['description']|capitalize}
            </td>
        </tbody> 
            {/if}
            {/foreach}  
    </table>
    <table class="table table-striped table-sm">
        <thead>
            <tr>
                <th>Product</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <h2>Graphics Cards</h2>
                {foreach from=$products item=product}
                {if $product['category'] eq "Graphics Cards"}
            <td>
                {$product['title']|capitalize}
            </td>
            <td>
                {$product['description']|capitalize}
            </td>
        </tbody> 
            {/if}
            {/foreach}
    </table>
    <table class="table table-striped table-sm">
        <thead>
            <tr>
                <th>Product</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <h2>Memory</h2>
                {foreach from=$products item=product}
                {if $product['category'] eq "Memory"}
            <td>
                {$product['title']|capitalize}
            </td>
            <td>
                {$product['description']|capitalize}
            </td>
        </tbody> 
            {/if}
            {/foreach}
    </table>
    <table class="table table-striped table-sm">
        <thead>
            <tr>
                <th>Product</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <h2>Sources</h2>
                {foreach from=$products item=product}
                {if $product['category'] eq "Sources"}
            <td>
                {$product['title']}
            </td>
            <td>
                {$product['description']}
            </td>
        </tbody> 
            {/if}
            {/foreach}
    </table>
{include file="footer.tpl"}