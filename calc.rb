require 'rspec'
require 'prime'
class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number ** 2
  end

  def power(number, exponent)
    return number ** exponent
  end

  def prime_division(num)
    Prime.prime_division(num)
  end
end

num1 = 10
num2 = 2

RSpec.describe Calculator do
  describe '#add' do
    it 'returns the sum of two numbers' do
      calc = Calculator.new
      result = calc.add(num1, num2)
      expect(result).to eq(num1 + num2)
    end
  end
end

RSpec.describe Calculator do
  describe '#multiply' do
    it 'returns the product of two numbers' do
      calc = Calculator.new
      result = calc.multiply(num1, num2)
      expect(result).to eq(num1 * num2)
    end
  end
end

RSpec.describe Calculator do
  describe '#subtract' do
    it 'returns the diffeence between two numbers' do
      calc = Calculator.new
      result = calc.subtract(num1, num2)
      expect(result).to eq(num1 - num2)
    end
  end
end

RSpec.describe Calculator do
  describe '#divide' do
    it 'returns the division of two numbers' do
      calc = Calculator.new
      result = calc.divide(num1, num2)
      expect(result).to eq(num1 / num2)
    end
  end
end

RSpec.describe Calculator do
  describe '#square' do
    it 'returns the cube of a number' do
      calc = Calculator.new
      result = calc.square(num1)
      expect(result).to eq(num1 ** 2)
    end
  end
end

RSpec.describe Calculator do
  describe '#power' do
    it 'returns num1 to the power of num2' do
      calc = Calculator.new
      result = calc.power(num1, num2)
      expect(result).to eq(num1 ** num2)
    end
  end
end

RSpec.describe Calculator do
  describe '#prime_division' do
    it 'returns prime factors of a number' do
      calc = Calculator.new
      result = calc.prime_division(num1)
      expect(result).to eq(Prime.prime_division(num1))
    end
  end
end
