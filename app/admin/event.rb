ActiveAdmin.register Event do
  config.clear_sidebar_sections!

  index do
    selectable_column
    column :id
    column :name
    column :public
    default_actions
  end

  form do |f|
    f.inputs "Event" do
      f.input :name
      f.input :start_time, :as => :datetime_picker, :label => 'Start Time', :local => true
      f.input :no_start_time, :label => 'Ignore Start Time'
      f.input :location
      f.input :body
      f.input :public
      f.input :featured
      f.input :fb_id, :label => 'Facebook Event ID'
      f.input :event_image, :as => :file, :hint => f.template.image_tag(f.object.event_image.url(:cropped))
    end

    f.actions do
     f.action :submit
     f.action :cancel, as: :link, :label => "Cancel"
    end
  end #form
end
