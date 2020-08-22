require "application_system_test_case"

class PendaftaransTest < ApplicationSystemTestCase
  setup do
    @pendaftaran = pendaftarans(:one)
  end

  test "visiting the index" do
    visit pendaftarans_url
    assert_selector "h1", text: "Pendaftarans"
  end

  test "creating a Pendaftaran" do
    visit pendaftarans_url
    click_on "New Pendaftaran"

    fill_in "Alamat", with: @pendaftaran.alamat
    fill_in "Hobi", with: @pendaftaran.hobi
    fill_in "Nama", with: @pendaftaran.nama
    fill_in "No hp", with: @pendaftaran.no_hp
    click_on "Create Pendaftaran"

    assert_text "Pendaftaran was successfully created"
    click_on "Back"
  end

  test "updating a Pendaftaran" do
    visit pendaftarans_url
    click_on "Edit", match: :first

    fill_in "Alamat", with: @pendaftaran.alamat
    fill_in "Hobi", with: @pendaftaran.hobi
    fill_in "Nama", with: @pendaftaran.nama
    fill_in "No hp", with: @pendaftaran.no_hp
    click_on "Update Pendaftaran"

    assert_text "Pendaftaran was successfully updated"
    click_on "Back"
  end

  test "destroying a Pendaftaran" do
    visit pendaftarans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pendaftaran was successfully destroyed"
  end
end
