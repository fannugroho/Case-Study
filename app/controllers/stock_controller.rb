class StockController < ApplicationController
  def index
    @data= Stok.all
  end

  def detail
    @data= Stok.find_by(id: params[:id])
  end

  def input

  end

  def create
    @data = Stok.new(judul: params[:judul], deskripsi: params[:deskripsi])
    @data.save

    flash[:pesan] = "saved successfully |"
    redirect_to("/stock/index")
  end

  def edit
    @data= Stok.find_by(id: params[:id])
  end

  def update
    @data= Stok.find_by(id: params[:id])
    @data.judul = params[:judul]
    @data.deskripsi = params[:deskripsi]
    @data.save

    flash[:pesan] = "updated successfully |"
    redirect_to("/stock/index")
  end

  def delete
    @data= Stok.find_by(id: params[:id])
    @data.destroy

    flash[:pesan] = "deleted successfully |"
    redirect_to("/stock/index")
  end
end
