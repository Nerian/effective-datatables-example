class PostsDatatable < Effective::Datatable
  datatable do
    col :name
    col :las
    col :lost

    # actions_col
  end

  filters do
    filter :name, 2000, as: :select, collection: ['June', 'Leo', 'Quincy']
    filter :last, 'whatever'
  end

  collection do
    # Post.where(year: filters[:year])

    [
      ['June', 'Huang', 'june@einstein.com'],
      ['Leo', 'Stubbs', 'leo@einstein.com'],
      ['Quincy', 'Pompey', 'quincy@einstein.com'],
      ['Annie', 'Wojcik', 'annie@einstein.com'],
    ]
  end
end