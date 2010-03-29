class SuppliersHooks < Spree::ThemeSupport::HookListener

  insert_after(:admin_product_sub_tabs) do
    '<%= tab :suppliers %>'
  end

  insert_after(:admin_configurations_menu) do
    '<tr>
      <td><%= link_to t("suppliers"), admin_suppliers_url %></td>
      <td><%= t("suppliers_description") %></td>
    </tr>'
  end

  insert_after(:admin_inside_head) do
    '<%= stylesheet_link_tag("admin/formtastic.css") %>'
  end

  insert_after(:admin_product_form_right) do
     '<p>
        <%= f.label :supplier_id, t("supplier")%><br />
        <%= f.collection_select(:supplier_id, Supplier.all, :id, :name, {:include_blank => true}, {"style" => "width:200px"}) %>
        <%= f.error_message_on :supplier_id %>
      </p>'
  end
end
