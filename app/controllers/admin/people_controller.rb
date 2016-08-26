class Admin::PeopleController < Admin::BaseController
  def index
    @people = Person.all.order(:last_name)
  end

  def destroy
    person.destroy
    redirect_to action: :index
  end

  private

  def person
    @person ||= Person.find(params.require(:id))
  end
end
