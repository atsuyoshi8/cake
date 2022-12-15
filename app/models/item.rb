class Item < ApplicationRecord

  enum is_active: {
    sale: 0,
    stop_selling: 1
}

end
