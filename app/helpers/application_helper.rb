module ApplicationHelper

  def set_sedes
    Sede.all
  end

  def set_areas
    Area.all
  end

end
