.class public interface abstract Lcom/zhangdan/app/data/db/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.zhangdan.app/mailbillrecord"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/j;->a:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CREATE TABLE IF  NOT  EXISTS MailBillRecord(_id  INTEGER  PRIMARY  KEY  AUTOINCREMENT,user_id  TEXT  DEFAULT \'\',mail_id INTEGER DEFAULT  0,mail_account_id  INTEGER DEFAULT  0,mail_subject TEXT DEFAULT \'\',state_msg  TEXT  DEFAULT \'\',analyse_time TEXT  DEFAULT \'\',create_time  TEXT  DEFAULT \'\',send_time TEXT DEFAULT \'\',email_name TEXT DEFAULT \'\')"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/j;->b:Ljava/lang/String;

    return-void
.end method
