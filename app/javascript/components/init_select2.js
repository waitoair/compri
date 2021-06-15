import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2({
    placeholder: "Escolha um book",
    allowClear: true,
    theme: "bootstrap",
    width: "80%"
  });
};

export { initSelect2 };
