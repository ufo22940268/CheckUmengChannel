.class public Lcom/zhangdan/app/data/model/http/UserBank;
.super Ljava/lang/Object;
.source "UserBank.java"


# instance fields
.field private auto_return_card:Ljava/lang/String;

.field private bank_id:Ljava/lang/String;

.field private bank_name:Ljava/lang/String;

.field private bill_data:Ljava/lang/String;

.field private bind_email:Ljava/lang/String;

.field private cash_limit:Ljava/lang/String;

.field private credit_limit:Ljava/lang/String;

.field private last_bill_date:Ljava/lang/String;

.field private last_bill_due_date:Ljava/lang/String;

.field private last_bill_id:Ljava/lang/String;

.field private name_on_bill:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private ub_id:J

.field private user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuto_return_card()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserBank;->auto_return_card:Ljava/lang/String;

    return-object v0
.end method

.method public getBank_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserBank;->bank_id:Ljava/lang/String;

    return-object v0
.end method

.method public getBank_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserBank;->bank_name:Ljava/lang/String;

    return-object v0
.end method

.method public getBill_data()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserBank;->bill_data:Ljava/lang/String;

    return-object v0
.end method

.method public getBind_email()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserBank;->bind_email:Ljava/lang/String;

    return-object v0
.end method

.method public getCash_limit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserBank;->cash_limit:Ljava/lang/String;

    return-object v0
.end method

.method public getCredit_limit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserBank;->credit_limit:Ljava/lang/String;

    return-object v0
.end method

.method public getLast_bill_date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserBank;->last_bill_date:Ljava/lang/String;

    return-object v0
.end method

.method public getLast_bill_due_date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserBank;->last_bill_due_date:Ljava/lang/String;

    return-object v0
.end method

.method public getLast_bill_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserBank;->last_bill_id:Ljava/lang/String;

    return-object v0
.end method

.method public getName_on_bill()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserBank;->name_on_bill:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserBank;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUb_id()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/UserBank;->ub_id:J

    return-wide v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserBank;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAuto_return_card(Ljava/lang/String;)V
    .locals 0
    .parameter "auto_return_card"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->auto_return_card:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setBank_id(Ljava/lang/String;)V
    .locals 0
    .parameter "bank_id"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->bank_id:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setBank_name(Ljava/lang/String;)V
    .locals 0
    .parameter "bank_name"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->bank_name:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setBill_data(Ljava/lang/String;)V
    .locals 0
    .parameter "bill_data"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->bill_data:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setBind_email(Ljava/lang/String;)V
    .locals 0
    .parameter "bind_email"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->bind_email:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setCash_limit(Ljava/lang/String;)V
    .locals 0
    .parameter "cash_limit"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->cash_limit:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setCredit_limit(Ljava/lang/String;)V
    .locals 0
    .parameter "credit_limit"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->credit_limit:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setLast_bill_date(Ljava/lang/String;)V
    .locals 0
    .parameter "last_bill_date"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->last_bill_date:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setLast_bill_due_date(Ljava/lang/String;)V
    .locals 0
    .parameter "last_bill_due_date"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->last_bill_due_date:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setLast_bill_id(Ljava/lang/String;)V
    .locals 0
    .parameter "last_bill_id"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->last_bill_id:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setName_on_bill(Ljava/lang/String;)V
    .locals 0
    .parameter "name_on_bill"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->name_on_bill:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->status:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setUb_id(J)V
    .locals 0
    .parameter "ub_id"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->ub_id:J

    .line 98
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .parameter "user_id"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->user_id:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserBank [user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bank_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->bank_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bank_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->bank_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name_on_bill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->name_on_bill:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", credit_limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->credit_limit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cash_limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->cash_limit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bill_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->bill_data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bind_email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->bind_email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", auto_return_card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->auto_return_card:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", last_bill_date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->last_bill_date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ub_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->ub_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", last_bill_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->last_bill_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", last_bill_due_date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/UserBank;->last_bill_due_date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
