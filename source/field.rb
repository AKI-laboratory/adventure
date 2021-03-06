class Field
  def initialize
    @layout0=[
      [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10,10,10,10,10],
      [10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10, 0, 0, 0, 0,10,10,10,10,10],
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10,10,10,10,10],  # center
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10],
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10],
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10],
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [10,10, 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0, 0,10,10,10,10, 0, 0, 0, 0],
      [10,10,10,10,10, 0, 0,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10, 0, 0, 0],
      [10,10,10,10,10, 0, 0,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10, 0, 0, 0],
      [10,10,10,10,10, 0, 0,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10]
    ]
    @layout1=[
      [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10],
      [10,10,10, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10, 0, 0,10,10,10,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0,10,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [10, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0],  # center
      [10,10, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0],
      [10,10, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0],
      [10,10,10,10,10,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0,10,10,10],
      [ 0,10,10,10,10,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10],
      [ 0, 0, 0, 0,10,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10,10]
    ]
    @layout2=[
      [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10],
      [10,10,10, 0, 0, 0, 0,10,10,10,10, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10,10,10],
      [10,10, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10],
      [10,10, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10],
      [10,10, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10],  # center
      [ 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10],
      [10,10,10, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10],
      [10,10,10,10,10,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10],
      [10,10, 0, 0,10,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10],
      [10,10, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10],
      [10,10, 0, 0, 0, 0,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10],
      [10,10,10, 0, 0, 0,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10]
    ]
    @layout3=[
      [10,10,10,10,10, 0, 0,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10, 0, 0,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10],
      [10,10, 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10,10],
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10],
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10],
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],  # center
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [10,10, 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10],
      [10,10,10, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10,10,10,10,10,10,10,10, 0, 0, 0,10,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10,10,10,10,10,10,10,10, 0, 0, 0,10,10,10,10,10,10,10,10,10,10,10]
    ]
    @layout4=[
      [10,10,10,10, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10, 0, 0, 0, 0],
      [10,10,10,10, 0, 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10, 0, 0, 0, 0, 0],
      [10,10,10,10, 0, 0, 0,10,10,10, 0, 0, 0, 0, 0,10,10,10,10,10, 0, 0, 0, 0, 0, 0],
      [10,10, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10,10,10, 0, 0,10,10,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10,10, 0, 0,10,10,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],  # center
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10],
      [10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10],
      [10,10,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10],
      [10,10,10,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10],
      [10,10,10,10,10,10,10,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10]
    ]
    @layout5=[
      [10,10,10, 0, 0, 0,10,10,10,10,10, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10],
      [ 0, 0, 0, 0, 0, 0,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10],
      [ 0, 0, 0, 0, 0,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10],
      [ 0, 0, 0,10,10,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10],
      [10,10,10,10,10,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10],
      [10,10,10,10,10,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10],
      [10,10,10,10,10,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10],
      [ 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10],  # center
      [ 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10],
      [10, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10],
      [10,10,10,10, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10],
      [10,10,10,10, 0, 0, 0,10,10,10,10, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10, 0, 0,10,10,10,10, 0, 0, 0,10,10,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10, 0, 0,10,10,10,10, 0, 0, 0,10,10,10,10,10,10,10,10,10,10,10,10]
    ]
    @layout6=[
      [10,10,10,10,10,10,10,10,10,10,10,10, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10,10,10,10,10,10,10,10, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10,10,10,10,10,10,10,10, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10,10, 0, 0, 0,10,10,10, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10, 0, 0, 0, 0, 0,10,10,10, 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [10,10,10,10, 0, 0, 0, 0, 0, 0,10,10,10, 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [10,10,10, 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [10,10,10, 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],  # center
      [10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [10,10,10, 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10],
      [10,10,10, 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10],
      [10,10,10, 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10],
      [10,10,10, 0, 0, 0, 0,10,10,10,10, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10, 0, 0,10,10,10,10,10, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10]
    ]
    @layout7=[
      [10,10,10,10,10,10,10,10,10,10,10, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10],
      [10,10,10,10,10,10,10,10,10,10,10, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10],
      [10,10,10, 0, 0, 0, 0, 0,10,10,10, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10],
      [10,10, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10,10,10,10],  # center
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10],
      [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0],
      [10,10,10,10, 0, 0, 0, 0,10,10,10,10,10, 0, 0, 0, 0, 0,10,10,10, 0, 0, 0, 0, 0],
      [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10, 0, 0, 0, 0, 0],
      [ 0, 0,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10],
      [ 0, 0, 0,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10],
      [ 0, 0, 0,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10]
    ]
    @layout8=[
      [10,10,10,10,10, 0, 0,10,10,10,10, 0, 0, 0,10,10,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10, 0, 0,10,10,10,10, 0, 0, 0,10,10,10,10,10,10,10,10,10,10,10,10],
      [10,10,10, 0, 0, 0, 0,10,10,10,10, 0, 0, 0, 0,10,10, 0, 0,10,10,10,10,10,10,10],
      [10,10, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0,10, 0, 0, 0, 0,10,10,10,10,10,10],
      [10,10, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0,10, 0, 0, 0, 0,10,10,10,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0,10,10, 0, 0,10,10],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0,10,10],
      [ 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10, 0, 0,10,10],
      [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10, 0, 0,10,10,10, 0,10,10],  # center
      [10,10,10,10,10,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10, 0,10,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10],
      [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10],
      [ 0, 0,10,10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10, 0, 0,10,10,10,10,10, 0, 0, 0, 0,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10],
      [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10]
    ]
    @image_field = Image.load('images/ground.png')
    @image_sea = Image.load('images/sea.png')
    @image_load = Image.load('images/load.png')
    @images = [@image_field, @image_load, nil, nil, nil, nil, nil, nil, nil, nil, @image_sea]
    @map_num = 4
    @maps = [@layout0, @layout1, @layout2, @layout3, @layout4, @layout5, @layout6, @layout7, @layout8]
  end

  def drawMap (map_num, trans_x:0, trans_y:0)
    layout = @maps[map_num]
    layout.each_with_index do |line, id_l|
      line.each_with_index do |num, id|
        Window.draw(32 * id + trans_x, 32 * id_l + trans_y, @images[num])
      end
    end
  end

  def drawField (map_num:map_num, scroll_x:0, scroll_y:0)
    @map_num = map_num
    drawMap(@map_num, trans_x:scroll_x, trans_y:scroll_y)

    if scroll_x < 0
      drawMap(@map_num + 1, trans_x:(scroll_x + Window.width))
    elsif scroll_x > 0
      drawMap(@map_num - 1, trans_x:(scroll_x - Window.width))
    elsif scroll_y < 0
      drawMap(@map_num + MAP_SIZE, trans_y:(scroll_y + Window.height))
    elsif scroll_y > 0
      drawMap(@map_num - MAP_SIZE, trans_y:(scroll_y - Window.height))
    end
  end

  def getFieldVal(x, y)
    layout = @maps[@map_num]
    if y == 17
      return layout[y - 1][x]
    end
    return layout[y][x]
  end

  def can_walk(x,y)
    _x = x/CELL_WIDTH
    _y = y/CELL_HEIGHT

    case getFieldVal(_x.to_i,_y.to_i)
    when 10
      false
    else
      true
    end
  end
end