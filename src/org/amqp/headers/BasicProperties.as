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
package org.amqp.headers
{
    import com.ericfeminella.utils.Map;

    /**
     *   THIS IS AUTO-GENERATED CODE. DO NOT EDIT!
     **/
    public class BasicProperties extends ContentHeader
    {
        private var _contenttype:String;
        private var _contentencoding:String;
        private var _headers:Map;
        private var _deliverymode:int;
        private var _priority:int;
        private var _correlationid:String;
        private var _replyto:String;
        private var _expiration:String;
        private var _messageid:String;
        private var _timestamp:Date;
        private var _type:String;
        private var _userid:String;
        private var _appid:String;
        private var _clusterid:String;

        public function get contenttype():String {return _contenttype;}
        public function get contentencoding():String {return _contentencoding;}
        public function get headers():Map {return _headers;}
        public function get deliverymode():int {return _deliverymode;}
        public function get priority():int {return _priority;}
        public function get correlationid():String {return _correlationid;}
        public function get replyto():String {return _replyto;}
        public function get expiration():String {return _expiration;}
        public function get messageid():String {return _messageid;}
        public function get timestamp():Date {return _timestamp;}
        public function get type():String {return _type;}
        public function get userid():String {return _userid;}
        public function get appid():String {return _appid;}
        public function get clusterid():String {return _clusterid;}

        public function set contenttype(x:String):void {_contenttype = x;}
        public function set contentencoding(x:String):void {_contentencoding = x;}
        public function set headers(x:Map):void {_headers = x;}
        public function set deliverymode(x:int):void {_deliverymode = x;}
        public function set priority(x:int):void {_priority = x;}
        public function set correlationid(x:String):void {_correlationid = x;}
        public function set replyto(x:String):void {_replyto = x;}
        public function set expiration(x:String):void {_expiration = x;}
        public function set messageid(x:String):void {_messageid = x;}
        public function set timestamp(x:Date):void {_timestamp = x;}
        public function set type(x:String):void {_type = x;}
        public function set userid(x:String):void {_userid = x;}
        public function set appid(x:String):void {_appid = x;}
        public function set clusterid(x:String):void {_clusterid = x;}

        override public function getClassId():int {
            return 60;
        }

        override public function readPropertiesFrom(reader:ContentHeaderPropertyReader):void{
            _contenttype = reader.readShortstr();
            _contentencoding = reader.readShortstr();
            _headers = reader.readTable();
            _deliverymode = reader.readOctet();
            _priority = reader.readOctet();
            _correlationid = reader.readShortstr();
            _replyto = reader.readShortstr();
            _expiration = reader.readShortstr();
            _messageid = reader.readShortstr();
            _timestamp = reader.readTimestamp();
            _type = reader.readShortstr();
            _userid = reader.readShortstr();
            _appid = reader.readShortstr();
            _clusterid = reader.readShortstr();
        }

        override public function writePropertiesTo(writer:ContentHeaderPropertyWriter):void{
            writer.writeShortstr(_contenttype);
            writer.writeShortstr(_contentencoding);
            writer.writeTable(_headers);
            writer.writeOctet(_deliverymode);
            writer.writeOctet(_priority);
            writer.writeShortstr(_correlationid);
            writer.writeShortstr(_replyto);
            writer.writeShortstr(_expiration);
            writer.writeShortstr(_messageid);
            writer.writeTimestamp(_timestamp);
            writer.writeShortstr(_type);
            writer.writeShortstr(_userid);
            writer.writeShortstr(_appid);
            writer.writeShortstr(_clusterid);
        }

    }
}