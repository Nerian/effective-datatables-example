class PostsDatatable < Effective::Datatable
  datatable do
    col :title
    col :year

    # actions_col
  end

  filters do
    filter :year, 2000, as: :select, collection: Post.all.pluck(:year).uniq
  end

  collection do
    Post.where(year: filters[:year])
  end
end