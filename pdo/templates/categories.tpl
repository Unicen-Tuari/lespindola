{include file="headerCategories.tpl"}
    <table class="table table-striped table-sm">
        <thead>
            <tr>
                <th>Product</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            {foreach from=$products item=product}
            {foreach from=$categories item=category}
            <h2><a href="category/{$category['id_category']}">{$category['name']}</a></h2>
            {/foreach}
            <td>
                {$product['title']|capitalize}
            </td>
            <td>
                {$product['description']|capitalize}
            </td>
            {/foreach}
        </tbody> 
    </table>
{include file="footer.tpl"}