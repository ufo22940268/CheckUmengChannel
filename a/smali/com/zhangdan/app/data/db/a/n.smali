.class public interface abstract Lcom/zhangdan/app/data/db/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.zhangdan.app/sms_user_bank"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/n;->a:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CREATE TABLE IF NOT EXISTS SmsUserBank(_id INTEGER PRIMARY KEY AUTOINCREMENT,bank_id INTEGER,bank_name TEXT,name_on_sms TEXT,card_no TEXT,credit_limit TEXT,cash_limit TEXT,new_balance TEXT,usd_new_balance TEXT,return_state INTEGER DEFAULT 0,is_creaditcard INTEGER DEFAULT 0,return_amount TEXT,bill_date TEXT,payment_due_date TEXT"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/n;->b:Ljava/lang/String;

    return-void
.end method
