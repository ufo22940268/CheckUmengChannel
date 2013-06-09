.class public interface abstract Lcom/zhangdan/app/data/db/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.zhangdan.app/bill"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/d;->a:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CREATE TABLE IF NOT EXISTS Bill(_id INTEGER PRIMARY KEY AUTOINCREMENT,bank_id INTEGER DEFAULT 0,bill_id INTEGER DEFAULT 0,user_id INTEGER DEFAULT 0,mail_id INTEGER DEFAULT 0,bill_start_date TEXT DEFAULT \'\',bill_date TEXT DEFAULT \'\',name_on_card TEXT DEFAULT \'\',payment_due_date TEXT DEFAULT \'\',credit_limit INTEGER DEFAULT 0,cash_limit INTEGER DEFAULT 0,new_charges INTEGER DEFAULT 0,usd_new_charges INTEGER DEFAULT 0,min_payment INTEGER DEFAULT 0,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "usd_min_payment INTEGER DEFAULT 0,new_balance INTEGER DEFAULT 0,usd_new_balance INTEGER DEFAULT 0,adjustment INTEGER DEFAULT 0,interest INTEGER DEFAULT 0,integral INTEGER DEFAULT 0,integral_valid_until INTEGER DEFAULT 0,integral_valid_date TEXT DEFAULT \'\',last_balance INTEGER DEFAULT 0,last_payment INTEGER DEFAULT 0,is_return INTEGER DEFAULT 0,card_nums TEXT DEFAULT \'\',ub_id INTEGER DEFAULT 0,mail_sender TEXT DEFAULT \'\',last_modify_time TEXT DEFAULT \'\',return_amount INTEGER DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "create_time TEXT DEFAULT \'\',sync_status TEXT DEFAULT \'\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/d;->b:Ljava/lang/String;

    return-void
.end method
