.class public interface abstract Lcom/zhangdan/app/data/db/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.zhangdan.app/mailbill"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/i;->a:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CREATE TABLE IF NOT EXISTS MailBill(_id INTEGER PRIMARY KEY AUTOINCREMENT,mail_id INTEGER DEFAULT 0,user_id INTEGER DEFAULT 0,mail_account_id INTEGER DEFAULT 0,mail_subject TEXT DEFAULT \'\',mail_type INTEGER DEFAULT 0,from_type INTEGER DEFAULT 0,analyze_state INTEGER DEFAULT 0,analyze_msg TEXT DEFAULT \'\',status INTEGER DEFAULT 0,state_msg TEXT DEFAULT \'\',create_time TEXT DEFAULT \'\',analyze_time TEXT DEFAULT \'\',send_time TEXT DEFAULT \'\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/i;->b:Ljava/lang/String;

    return-void
.end method
