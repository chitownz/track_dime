class TransactionsController < ApplicationController 

  def index
    @transactions = Transaction.all.order('date ASC')
  end 

  def show
    @transaction = Transaction.find(params[:id])
  end 

  def edit
     @transaction = Transaction.find(params[:id])
  end

  def update
    @transaction = Transaction.find(params[:id])
    if @transaction.update_attributes(transaction_params)
      redirect_to @transaction
    else
      redirect_to edit_transaction_path(@transaction)
    end
  end

  def destroy 
    @transaction = Transaction.find(params[:id])
    @transaction.destroy
    redirect_to transactions_path
  end


 def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      flash[:success] = "The transaction was successfully created."
      redirect_to @transaction
    else
      flash[:error] = "Please try again"
      render :new
    end
  end

  def new
    @transaction = transaction.new
  end


  def transaction_params
    params.permit(:date, :transaction_type, :description, :address, :amount)
  end





















end
