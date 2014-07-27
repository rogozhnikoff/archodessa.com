class ArchObject < ActiveRecord::Base
  has_many :articles
  has_many :arch_objects_architects
  has_many :arch_objects_styles
  has_many :arch_objects_types
  has_many :architects, through: :arch_objects_architects
  has_many :styles, through: :arch_objects_styles
  has_many :types, through: :arch_objects_types
  belongs_to :user

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  DISTRICTS = %w(Суворовский Малиновский Молдаванка Киевский Приморский)
# Не забути видалити STYLES -  сміття
  STYLES = [
   'барокко',
   'неоготика',
   'готика',
   'рококо',
   'модернизированная эклектика',
   'югендстиль',
   'французское барокко',
   'русско-византийский',
   'ранняя эклектика',
   'конструктивизм',
   'венское барокко',
   'венецианский ренессанс',
   'классицизм',
   'ренессанс',
   'псевдоготика',
   'немецкий ренессанс',
   'кирпичный стиль',
   'рациональный модерн',
   'неоренессанс',
   'модернизированный неоампир',
   'модернизированный неоренессанс',
   'орнаментальный модерн',
   'сталинский ампир',
   'эклектика',
   'неоклассицизм',
   'ретроспективный модерн',
   'модерн'
  ]
  STATUS_TYPES = [
   'Памятник мемориального искусства',
   'Не сохранился',
   'Памятник истории национального значения',
   'Памятник истории местного значения',
   'Памятник истории',
   'Памятник истории и архитектуры национального значения',
   'Памятник архитектуры национального значения',
   'Не определён',
   'Объект фоновой застройки',
   'Памятник архитектуры местного',
   'Памятник истории и архитектуры местного значения'
  ]
  OBJECT_TYPES = [
   'музей',
   'театр',
   'библиотека',
   'остановка',
   'общественное сооружение',
   'церковь',
   'жилой дом',
   'электрическая подстанция',
   'павильон остановки',
   'магазин',
   'жилой флигель',
   'торговые ряды',
   'административное',
   'жилой дом с доходными квартирами',
   'внутридворовой жилой флигель',
   'многоквартирный жилой дом',
   'доходный дом',
   'особняк'
  ]
end
