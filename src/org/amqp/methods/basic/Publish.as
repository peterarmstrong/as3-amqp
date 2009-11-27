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
    public class Publish extends Method implements ArgumentReader, ArgumentWriter
    {
         private var _ticket:int = 0;
         private var _exchange:String = "";
         private var _routingkey:String = "";
         private var _mandatory:Boolean = false;
         private var _immediate:Boolean = false;

         public function get ticket():int {return _ticket;}
         public function get exchange():String {return _exchange;}
         public function get routingkey():String {return _routingkey;}
         public function get mandatory():Boolean {return _mandatory;}
         public function get immediate():Boolean {return _immediate;}

         public function set ticket(x:int):void {_ticket = x;}
         public function set exchange(x:String):void {_exchange = x;}
         public function set routingkey(x:String):void {_routingkey = x;}
         public function set mandatory(x:Boolean):void {_mandatory = x;}
         public function set immediate(x:Boolean):void {_immediate = x;}

         override public function hasResponse():Boolean {
             return null != getResponse();
         }

         override public function hasContent():Boolean {
             return true;
         }

         override public function isBottomHalf():Boolean {
             return false;
         }

         override public function getClassId():int{
             return 60;
         }

         override public function getMethodId():int{
             return 40;
         }

         override public function writeArgumentsTo(writer:MethodArgumentWriter):void {
             writer.writeShort(_ticket);
             writer.writeShortstr(_exchange);
             writer.writeShortstr(_routingkey);
             writer.writeBit(_mandatory);
             writer.writeBit(_immediate);
         }

         override public function readArgumentsFrom(reader:MethodArgumentReader):void {
             _ticket = reader.readShort();
             _exchange = reader.readShortstr();
             _routingkey = reader.readShortstr();
             _mandatory = reader.readBit();
             _immediate = reader.readBit();
         }

         public function dump():void {
             trace("-------- basic.Publish --------");
             trace("ticket: {" + _ticket + "}");
             trace("exchange: {" + _exchange + "}");
             trace("routingkey: {" + _routingkey + "}");
             trace("mandatory: {" + _mandatory + "}");
             trace("immediate: {" + _immediate + "}");
         }
    }
}