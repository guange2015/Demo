rspec 单元测试

before 和 after

before(:each)  在每个it前都会执行
before(:all) 在整个describe前执行一次
after与之对应

let 与 let!

let 相当于定义一个instance变量
Lazy, 有需要时才会去执行。
速度 <= before(:each)
let! 为非Lazy

命令行执行
ruby -r./spec/spec_helper.rb -S script/rails c test