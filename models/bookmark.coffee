class BatmanDemo.Bookmark extends Batman.Model
  @persist Batman.LocalStorage

  @encode 'url'
  @encode 'tags',
    encode: (tagSet) -> tagSet.replace(/,\s/g,',')
    decode: (tagString) -> new Batman.Set(tagString.split(',')...)

  @validate 'url', presence: yes
  @validate 'tags', presence: yes