require 'test_helper'

class PendaftaransControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pendaftaran = pendaftarans(:one)
  end

  test "should get index" do
    get pendaftarans_url
    assert_response :success
  end

  test "should get new" do
    get new_pendaftaran_url
    assert_response :success
  end

  test "should create pendaftaran" do
    assert_difference('Pendaftaran.count') do
      post pendaftarans_url, params: { pendaftaran: { alamat: @pendaftaran.alamat, hobi: @pendaftaran.hobi, nama: @pendaftaran.nama, no_hp: @pendaftaran.no_hp } }
    end

    assert_redirected_to pendaftaran_url(Pendaftaran.last)
  end

  test "should show pendaftaran" do
    get pendaftaran_url(@pendaftaran)
    assert_response :success
  end

  test "should get edit" do
    get edit_pendaftaran_url(@pendaftaran)
    assert_response :success
  end

  test "should update pendaftaran" do
    patch pendaftaran_url(@pendaftaran), params: { pendaftaran: { alamat: @pendaftaran.alamat, hobi: @pendaftaran.hobi, nama: @pendaftaran.nama, no_hp: @pendaftaran.no_hp } }
    assert_redirected_to pendaftaran_url(@pendaftaran)
  end

  test "should destroy pendaftaran" do
    assert_difference('Pendaftaran.count', -1) do
      delete pendaftaran_url(@pendaftaran)
    end

    assert_redirected_to pendaftarans_url
  end
end
