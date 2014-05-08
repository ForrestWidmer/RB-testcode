class Account
attr_accessor :balance

  def initialize(balance)
    @balance = balance
  end

end

class Transaction
  def initialize(acct_a, acct_b)
    @acct_a = acct_a
    @acct_b = acct_b
  end

  private

  def debit(account, amount)
    account.balance -= amount
  end

  def credit(account, amount)
    account.balance += amount
  end

  public

  def transfer(amount)
    debit(@acct_a, amount)
    credit(@acct_b, amount)
  end

end

savings = Account.new(100)
checking = Account.new(200)
puts "Savings: #{savings.balance}, Checking: #{checking.balance}"
trans = Transaction.new(checking, savings)
trans.transfer(50)
puts "Savings: #{savings.balance}, Checking: #{checking.balance}"