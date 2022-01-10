const set_positions = () => {
  $(".sortable-card").each((i) => {
    $(this).attr("data-pos", i + 1);
    return;
  });
  return;
};

const ready = () => {
  set_positions();
  $(".sortable").sortable();
  $(".sortable")
    .sortable()
    .bind("sortupdate", (e, ui) => {
      let updated_order = [];
      set_positions();
      document.querySelectorAll(".sortable-card").forEach((e, i) => {
        updated_order.push({
          id: e.dataset.id,
          position: i + 1,
        });
      });
      $.ajax("/portfolios/sort", {
        type: "PUT",
        datatype: "json",
        data: { order: updated_order },
      });
      return;
    });
  return;
};

$("document").ready(ready);
