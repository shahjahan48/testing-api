class Users{
    constructor(Id, EmailId, PasswordHash, CreatedOn, UpdatedOn, IsActive){
        this.Id = Id;
        this.EmailId = EmailId;
        this.PasswordHash = PasswordHash;
        this.CreatedOn = CreatedOn;
        this.UpdatedOn = UpdatedOn;
        this.IsActive = IsActive;
    }
}

module.exports = Users;