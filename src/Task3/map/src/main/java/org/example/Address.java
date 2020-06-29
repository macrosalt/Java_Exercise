package org.example;

public class Address {
    private String place_id;
    private String city;

    public Address(String a, String b) {
        place_id = a;
        city = b;
    }

    public String getPlace_id() {
        return place_id;
    }

    public void setPlace_id(String place_id) {
        this.place_id = place_id;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Override
    public String toString() {
        return "Address{" +
                "place_id='" + place_id + '\'' +
                ", city='" + city + '\'' +
                '}';
    }
}
