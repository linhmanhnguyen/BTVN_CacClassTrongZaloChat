import UIKit

var greeting = "Hello, playground"

class NguoiDung{
    var tenNguoiDung: String
    var matKhau: String
    var hoTenNguoiDung: String
    var soDienThoai: String
    var email: String
    var danhSachBanBe: [NguoiDung]
    //var danhSachNhomChat: [nhomChat]
    
    init(tenNguoiDung: String, matKhau: String, hoTenNguoiDung: String, soDienThoai: String, email: String) {
        self.tenNguoiDung = tenNguoiDung
        self.matKhau = matKhau
        self.hoTenNguoiDung = hoTenNguoiDung
        self.soDienThoai = soDienThoai
        self.email = email
        self.danhSachBanBe = []
        //self.danhSachNhomChat = []
    }
    
    func hienThiThongTin() {
        print("Thong tin nguoi dung: Ten Nguoi Dung: \(self.tenNguoiDung), Ho Ten Nguoi Dung: \(self.hoTenNguoiDung), So Dien Thoai: \(self.soDienThoai), Email: \(self.email)")
    }
    func dangKyTaiKhoan() {
    }
    func dangNhap() {
    }
    func dangXuat() {
    }
    func themBanBe(_ friend: NguoiDung) {
    }
    func xoaBanBe(_ friend: NguoiDung) {
    }
}

var nguoiDung1 = NguoiDung(tenNguoiDung: "linh manh nguyen", matKhau: "123456" , hoTenNguoiDung:"Nguyen Manh Linh" , soDienThoai: "0123456789", email: "abc@gmail.com")
var nguoiDung2 = NguoiDung(tenNguoiDung: "A nguyen van", matKhau: "123456" , hoTenNguoiDung:"Nguyen Van A" , soDienThoai: "0123456789", email: "abc@gmail.com")
var nguoiDung3 = NguoiDung(tenNguoiDung: "B nguyen thi", matKhau: "123456" , hoTenNguoiDung:"Nguyen Thi B" , soDienThoai: "0123456789", email: "abc@gmail.com")

print(nguoiDung1.hienThiThongTin())
print(nguoiDung2.hienThiThongTin())
print(nguoiDung3.hienThiThongTin())



class TinNhan{
    var noiDung: String
    var thoiGianGui: Date
    var nguoiGui: NguoiDung
    var nguoiNhan: NguoiDung
    
    init(noiDung: String, thoiGianGui: Date, nguoiGui: NguoiDung, nguoiNhan: NguoiDung) {
        self.noiDung = noiDung
        self.thoiGianGui = Date()
        self.nguoiGui = nguoiGui
        self.nguoiNhan = nguoiNhan
    }
    func hienThiDoanChat(){
        print("\(self.noiDung), \(self.thoiGianGui), \(self.nguoiGui.tenNguoiDung), \(self.nguoiNhan.tenNguoiDung)")
    }
}

var tinNhan1 = TinNhan(noiDung: "Alo", thoiGianGui: Date() , nguoiGui: nguoiDung1, nguoiNhan: nguoiDung2)
print(tinNhan1.hienThiDoanChat())


class ManHinhChat : TinNhan{
    var idDoanChat: String = ""

    override func hienThiDoanChat() {
        print("\(self.idDoanChat), \(self.noiDung), \(self.thoiGianGui), \(self.nguoiGui.tenNguoiDung), \(self.nguoiNhan.tenNguoiDung)")
    }
}
var manHinhChat1 = ManHinhChat(noiDung: "Hello", thoiGianGui: Date(), nguoiGui: nguoiDung1, nguoiNhan: nguoiDung2)
manHinhChat1.idDoanChat = "doanChatLinhvsA"
print(manHinhChat1.hienThiDoanChat())

class NhomChat {
    var tenNhomChat: String
    var danhSachThanhVien: [NguoiDung]
    var danhSachTinNhan: [TinNhan]
    
    init(tenNhomChat: String) {
        self.tenNhomChat = tenNhomChat
        self.danhSachThanhVien = []
        self.danhSachTinNhan = []
    }
    
    func themThanhVien(_ thanhVienNhomChat: NguoiDung) {
    
    }
    
    func xoaThanhVien(_ thanhVienNhomChat: NguoiDung) {

    }
}

