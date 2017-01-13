module RailsKindeditorExtend
  module SimpleForm
    class KindeditorExtendInput < ::SimpleForm::Inputs::Base
      def input(wrapper_options)
        @builder.kindeditor_extend(attribute_name, input_html_options)
      end
    end
  end
end

::SimpleForm::FormBuilder.map_type :kindeditor, :to => RailsKindeditorExtend::SimpleForm::KindeditorExtendInput
