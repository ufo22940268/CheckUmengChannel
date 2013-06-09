.class public interface abstract Lcom/zhangdan/app/sms/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.zhangdan.app/billdata"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/f;->a:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CREATE TABLE IF NOT EXISTS bill_data(_id INTEGER PRIMARY KEY AUTOINCREMENT,bank_id INTEGER,bill_id INTEGER,bank_name TEXT,card_last TEXT,bill_type INTEGER,is_remeber INTEGER,amount TEXT,currency_type INTEGER default 0,sms_data TEXT,remark TEXT,repay_day INTEGER,repay_year INTEGER,repay_month INTEGER,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "sms_date TEXT,true_name TEXT,phone TEXT,us_amount TEXT)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/f;->b:Ljava/lang/String;

    return-void
.end method
