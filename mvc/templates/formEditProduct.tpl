{include file="headerIndex.tpl"}
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
      <form action="editProduct" method="GET">
        <input type="hidden" id="id_product" name="id_product" value="{{$products['id_product']}}">
        <!-- <input type="hidden" id="fk_category" name="fk_category" value="{$products['fk_category']}"> -->
        <h1>Edit Product</h1>
          <div class="form-group">
            <label>Name Product</label>
            <input type="text" class="form-control" id="title" name="title" value="{{$products['title']}}">
          </div>
          <div class="form-group">
            <label>Category</label>
            <select id="category" name="category">
              {foreach from=$categories item=category}
              <option value="{{$category['id_category']}}"
                {if $category['id_category'] eq $products['fk_category']}
                    selected
                {/if}
              >{{$category['name']}}</option>
              {/foreach}
            </select>
          </div>
          <div class="form-group">
            <label>Description</label>
            <textarea class="form-control" id="description" name="description" value="{{$products['description']}}" rows="3">{{$products['description']}}</textarea>
          </div>
          <button type="submit" class="btn btn-primary">Edit Product</button>
      </form>
    </div>
{include file="footerAdmin.tpl"}  