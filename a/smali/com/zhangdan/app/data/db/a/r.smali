.class public interface abstract Lcom/zhangdan/app/data/db/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.zhangdan.app/userbank"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/r;->a:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CREATE TABLE IF NOT EXISTS UserBank(_id INTEGER PRIMARY KEY AUTOINCREMENT,user_id INTEGER DEFAULT 0,bank_id INTEGER DEFAULT 0,bank_name TEXT DEFAULT \'\',name_on_bill TEXT DEFAULT \'\',credit_limit INTEGER DEFAULT 0,cash_limit INTEGER DEFAULT 0,bill_data TEXT DEFAULT \'\',bind_email TEXT DEFAULT \'\',auto_return_card TEXT DEFAULT \'\',last_bill_date TEXT DEFAULT \'\',status INTEGER DEFAULT 0,ub_id INTEGER DEFAULT 0,last_bill_id INTEGER DEFAULT 0,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "last_bill_due_date TEXT DEFAULT \'\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/r;->b:Ljava/lang/String;

    return-void
.end method
