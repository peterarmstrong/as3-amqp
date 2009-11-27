/**
 * ---------------------------------------------------------------------------
 *   Copyright (C) 2008 0x6e6562
 *
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 * ---------------------------------------------------------------------------
 **/
package org.amqp.methods.basic
{
    import org.amqp.Method;
    import org.amqp.LongString;
    import org.amqp.methods.ArgumentReader;
    import org.amqp.methods.ArgumentWriter;
    import org.amqp.methods.MethodArgumentReader;
    import org.amqp.methods.MethodArgumentWriter;
    import com.ericfeminella.utils.Map;
    import com.ericfeminella.utils.HashMap;
    import org.amqp.impl.ByteArrayLongString;
    import flash.utils.ByteArray;

    /**
     *   THIS IS AUTO-GENERATED CODE. DO NOT EDIT!
     **/
    public class GetOk extends Method implements ArgumentReader, ArgumentWriter
    {
         private var _deliverytag:uint = 0;
         private var _redelivered:Boolean = false;
         private var _exchange:String = "";
         private var _routingkey:String = "";
         private var _messagecount:int = 0;

         public function get deliverytag():uint {return _deliverytag;}
         public function get redelivered():Boolean {return _redelivered;}
         public function get exchange():String {return _exchange;}
         public function get routingkey():String {return _routingkey;}
         public function get messagecount():int {return _messagecount;}

         public function set deliverytag(x:uint):void {_deliverytag = x;}
         public function set redelivered(x:Boolean):void {_redelivered = x;}
         public function set exchange(x:String):void {_exchange = x;}
         public function set routingkey(x:String):void {_routingkey = x;}
         public function set messagecount(x:int):void {_messagecount = x;}

         override public function hasResponse():Boolean {
             return null != getResponse();
         }

         override public function hasContent():Boolean {
             return true;
         }

         override public function isBottomHalf():Boolean {
             return true;
         }

         override public function getClassId():int{
             return 60;
         }

         override public function getMethodId():int{
             return 71;
         }

         override public function writeArgumentsTo(writer:MethodArgumentWriter):void {
             writer.writeLonglong(_deliverytag);
             writer.writeBit(_redelivered);
             writer.writeShortstr(_exchange);
             writer.writeShortstr(_routingkey);
             writer.writeLong(_messagecount);
         }

         override public function readArgumentsFrom(reader:MethodArgumentReader):void {
             _deliverytag = reader.readLonglong();
             _redelivered = reader.readBit();
             _exchange = reader.readShortstr();
             _routingkey = reader.readShortstr();
             _messagecount = reader.readLong();
         }

         public function dump():void {
             trace("-------- basic.GetOk --------");
             trace("deliverytag: {" + _deliverytag + "}");
             trace("redelivered: {" + _redelivered + "}");
             trace("exchange: {" + _exchange + "}");
             trace("routingkey: {" + _routingkey + "}");
             trace("messagecount: {" + _messagecount + "}");
         }
    }
}